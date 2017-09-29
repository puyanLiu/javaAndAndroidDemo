.class public Lcom/alipay/android/phone/businesscommon/advertisement/trigger/e;
.super Ljava/lang/Object;
.source "AdvertisementPipeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Lcom/alipay/android/phone/businesscommon/advertisement/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/d/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->a()Lcom/alipay/android/phone/businesscommon/advertisement/d/e;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->a(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    .line 17
    return-void
.end method
