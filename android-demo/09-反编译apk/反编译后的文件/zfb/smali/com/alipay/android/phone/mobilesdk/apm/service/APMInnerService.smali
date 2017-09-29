.class public Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;
.super Landroid/app/Service;
.source "APMInnerService.java"


# instance fields
.field private final a:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 17
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;->a:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;->a:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;

    return-object v0
.end method
