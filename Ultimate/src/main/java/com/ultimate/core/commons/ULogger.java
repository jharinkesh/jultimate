package com.ultimate.core.commons;

import org.apache.log4j.Logger;

public class ULogger {

	private static final Logger logger = Logger.getLogger(ULogger.class);

	
	public static void logError(Exception e) {
			logger.error(e);
	}
	
	public static void logError(String tid, String errorMessage, Exception e) {
		if (tid != null)
			logger.error(tid + " : " + errorMessage, e);
		else
			logger.error(errorMessage, e);
	}

	public static void logInfo(String tid, String message) {
		if (tid != null)
			logger.info(tid + " : " + message);
		else
			logger.info(message);
	}

}
