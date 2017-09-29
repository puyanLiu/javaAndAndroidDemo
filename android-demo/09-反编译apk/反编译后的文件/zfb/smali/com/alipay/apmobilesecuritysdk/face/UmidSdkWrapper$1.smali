.class Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/dp/client/IInitResultListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper$1;->this$0:Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFinished(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->access$002(Z)Z

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->access$102(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
