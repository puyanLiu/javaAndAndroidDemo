.class public abstract Lcom/alipay/mobile/framework/service/ext/security/AreaInfoService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearAreaInfo()V
.end method

.method public abstract getAreaInfo(Lcom/alipay/mobile/security/area/GetAreaCallback;)V
.end method

.method public abstract getLocalAreaInfo()Lcom/alipay/mobilerelation/biz/shared/resp/GetAreaResult;
.end method

.method public abstract saveAreaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAreaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/security/area/SetAreaCallback;)V
.end method
