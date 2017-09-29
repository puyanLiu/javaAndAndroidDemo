.class public Lcom/alipay/mobile/security/msgcenter/listener/SocialProfileListener;
.super Ljava/lang/Object;


# static fields
.field public static final BIZ_TYPE:Ljava/lang/String; = "UCHAT-MRFC"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UCHAT-MRFC"

    const-string/jumbo v2, "UCHAT-MRFC listener started "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public registerListener()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    new-instance v1, Lcom/alipay/mobile/security/msgcenter/listener/SocialProfileListener$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/msgcenter/listener/SocialProfileListener$1;-><init>(Lcom/alipay/mobile/security/msgcenter/listener/SocialProfileListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->setMyInfoChangedListener(Lcom/alipay/mobile/framework/service/ext/contact/SelfInfoCallback;)V

    return-void
.end method
