package tomcat;

public class Comment {
    public void doGet(String name, String commentText, int rating) {
        // 受け取ったコメントの処理を行う
        // 例えば、データベースへの保存やログへの出力など

        // ここでは、単純にコンソールに表示するだけの例を示します
        System.out.println("氏名: " + name);
        System.out.println("感想: " + commentText);
        System.out.println("評価: " + rating);
    }
}
