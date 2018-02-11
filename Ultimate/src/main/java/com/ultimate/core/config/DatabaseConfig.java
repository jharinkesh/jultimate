/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.core.config;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.MongoTemplate;

import com.mongodb.Mongo;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;

/**
 *
 * @author baba
 */
@Configuration
public class DatabaseConfig {

	@Value("${mongo.dbname}")
	private String dbName;

	@Value("${mongo.host}")
	private String host;

	@Value("${mongo.port}")
	private Integer port;

	@Value("${mongo.user}")
	private String userName;

	@Value("${mongo.psw}")
	private String password;

	public @Bean MongoOperations mongoOperations() throws Exception {
		return (MongoOperations) mongoTemplate();
	}

	public Mongo mongo() throws Exception {
		ServerAddress serverAdress = new ServerAddress(host, port);
		MongoCredential credential = MongoCredential.createScramSha1Credential(userName, getDatabaseName(),
				password.toCharArray());
		Mongo mongo = new MongoClient(serverAdress, Arrays.asList(credential));
		return mongo;
	}

	public MongoTemplate mongoTemplate() throws Exception {
		return new MongoTemplate(mongo(), dbName);
	}

	protected String getDatabaseName() {
		return dbName;
	}

}
