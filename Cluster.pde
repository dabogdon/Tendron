public class Cluster {
  public final static int NUM_STEMS = 7; //number of tendrils per cluster

  public Cluster(int len, int x, int y, int r, int g, int b, int siz) {
    Tendril[] t = new Tendril[NUM_STEMS];
    for (int i=0; i<t.length; i++) {
      t[i]= new Tendril(len, (Math.random()*(2*Math.PI)), x, y, r, g, b, siz);
      t[i].show();
    }
  }
}
