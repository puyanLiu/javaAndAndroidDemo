.class final Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;
.super Ljava/lang/Object;
.source "ANRError.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Ljava/lang/StackTraceElement;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;->b:[Ljava/lang/StackTraceElement;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;)[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;->b:[Ljava/lang/StackTraceElement;

    return-object v0
.end method
