.class final Lcom/alipay/android/phone/mobilesdk/apm/anr/b;
.super Ljava/lang/Object;
.source "ANRWatchDog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/b;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/b;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/b;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->a(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->a(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;I)I

    .line 65
    return-void
.end method
