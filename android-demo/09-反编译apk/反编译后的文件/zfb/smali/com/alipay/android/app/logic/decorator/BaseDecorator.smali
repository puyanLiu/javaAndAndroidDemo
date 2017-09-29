.class public abstract Lcom/alipay/android/app/logic/decorator/BaseDecorator;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

.field protected b:Lcom/alipay/android/app/logic/request/RequestConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final a(Lcom/alipay/android/app/logic/request/RequestConfig;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    .line 27
    return-void
.end method

.method public abstract a([BLjava/lang/String;)[B
.end method
