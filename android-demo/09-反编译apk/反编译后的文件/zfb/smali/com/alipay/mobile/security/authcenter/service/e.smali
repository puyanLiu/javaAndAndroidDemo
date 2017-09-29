.class final Lcom/alipay/mobile/security/authcenter/service/e;
.super Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/service/e;->a:Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public final addExtHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/e;->a:Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->access$0(Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "uid"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    :cond_0
    return-void
.end method
