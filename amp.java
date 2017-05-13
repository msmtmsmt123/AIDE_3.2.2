import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

class amp extends HttpEntityWrapper {
    public amp(HttpEntity httpEntity) {
        super(httpEntity);
    }

    public InputStream getContent() {
        return new GZIPInputStream(this.wrappedEntity.getContent());
    }

    public long getContentLength() {
        return -1;
    }
}