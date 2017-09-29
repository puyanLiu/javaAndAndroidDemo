.class final Lcom/alipay/mobile/security/authcenter/b/a/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/mobile/rsa/RSAHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/authcenter/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/b/a/a;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/RSAService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/authcenter/b/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$b;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$b;->b:Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    return-void
.end method


# virtual methods
.method public final getRSAKey()Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;
    .locals 5

    new-instance v0, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    invoke-direct {v0}, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$b;->b:Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->getRsaKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$b;->b:Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->getRsaTS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaTS:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rsaService\u8fd4\u56de\u7684\u516c\u94a5:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
