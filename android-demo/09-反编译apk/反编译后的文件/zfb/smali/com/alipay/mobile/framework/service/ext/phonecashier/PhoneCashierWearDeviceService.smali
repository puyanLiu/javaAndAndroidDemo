.class public abstract Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierWearDeviceService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "PhoneCashierWearDeviceService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract requestData(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;ZLcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V
.end method

.method public abstract wearDeviceOperate(Landroid/content/Context;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;Lorg/json/JSONObject;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V
.end method
