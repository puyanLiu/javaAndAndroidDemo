.class public abstract Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "PhoneCashierAssistService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
.end method

.method public abstract getUserInfo()Ljava/util/Map;
.end method

.method public abstract getUserInfoSessionId()Ljava/lang/String;
.end method

.method public abstract isQihooGuardOpened()Z
.end method

.method public abstract isQihooInstalled()Z
.end method

.method public abstract readBankCard(Ljava/lang/Object;Landroid/app/Activity;)V
.end method

.method public abstract readQihooSMS()Ljava/lang/String;
.end method

.method public abstract requestMspData(Ljava/util/Map;)Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;
.end method
