.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APDownloadListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 195
    const/4 v0, 0x0

    .line 196
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "attachment; filename="

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const-string/jumbo v0, "attachment; filename="

    const-string/jumbo v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 208
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    move v1, v2

    .line 209
    :goto_0
    const-string/jumbo v4, "H5PageImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "download filename is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isapk "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    if-eqz v1, :cond_7

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b(Ljava/lang/String;)Z

    move-result v1

    .line 212
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 213
    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v5, "contentLength"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v5, "inApkWhiteList"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v6, "h5PageDownloadApk"

    invoke-virtual {v5, v6, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 217
    if-nez v1, :cond_7

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    iget-wide v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 219
    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-gez v4, :cond_6

    .line 220
    :goto_1
    const-string/jumbo v2, "H5PageImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "user trigger apk "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " elapse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    if-eqz v3, :cond_4

    .line 222
    sget v0, Lcom/alipay/mobile/nebulacore/R$raw;->intercept_apk:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/global/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "####"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getWebProvider()Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;->mapContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->loadUrl(Ljava/lang/String;)V

    .line 239
    :cond_4
    :goto_2
    return-void

    :cond_5
    move v1, v3

    .line 208
    goto/16 :goto_0

    :cond_6
    move v3, v2

    .line 219
    goto :goto_1

    .line 231
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 232
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v2, "fileName"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v0, "userAgent"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v0, "contentDisposition"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v0, "mimeType"

    invoke-virtual {v1, v0, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v0, "contentLength"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5PageDownload"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_2
.end method
