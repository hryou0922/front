package com.hry.util;

import java.io.IOException;
import java.io.InputStream;

public class IOUtils {

	public static String readInputStream(InputStream in){
		StringBuilder sb = new StringBuilder();
		
		byte[] buf = new byte[1024];
		try {
			int length = in.read(buf);
			while(length > -1){
				sb.append(new String(buf,0,length));
				length = in.read(buf);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sb.toString();
	}
	
}
