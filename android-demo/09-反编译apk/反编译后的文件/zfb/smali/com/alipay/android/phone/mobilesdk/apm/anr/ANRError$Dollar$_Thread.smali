.class Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;
.super Ljava/lang/Throwable;
.source "ANRError.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;->this$0:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;

    .line 27
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;->a(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;->this$0:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;->b(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 33
    return-object p0
.end method
