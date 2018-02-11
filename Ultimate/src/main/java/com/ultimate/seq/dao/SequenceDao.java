/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.seq.dao;

import com.ultimate.core.exceptions.SequenceException;

public interface SequenceDao {

	Integer getNextSequenceId(String key) throws SequenceException;

}
