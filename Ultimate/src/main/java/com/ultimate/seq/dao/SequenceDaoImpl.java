/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.seq.dao;

import com.ultimate.core.entity.SequenceId;
import com.ultimate.core.exceptions.SequenceException;
import javax.inject.Inject;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class SequenceDaoImpl implements SequenceDao {

    @Inject
    private MongoOperations mongoOperation;

    @Override
    public Integer getNextSequenceId(String key) throws SequenceException {

        try {
            SequenceId seqId = mongoOperation.findOne(new Query(Criteria.where("_id").is(key)), SequenceId.class);

            if (seqId == null) {
                mongoOperation.save(new SequenceId(key, 1));
                return 1;
            } else {
                seqId.setSeq(seqId.getSeq() + 1);
                mongoOperation.save(seqId);
                return seqId.getSeq();
            }
        } catch (Exception ex) {
        }

        return 0;
    }

}
