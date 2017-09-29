.class public Lcom/alipay/android/app/source/SourceMessageObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/message/IObserver;


# instance fields
.field private a:I

.field private b:Lcom/alipay/android/app/source/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/source/SourceMessageObserver;->a:I

    .line 14
    const/16 v0, 0xc

    iput v0, p0, Lcom/alipay/android/app/source/SourceMessageObserver;->a:I

    .line 15
    invoke-static {}, Lcom/alipay/android/app/source/a;->a()Lcom/alipay/android/app/source/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/source/SourceMessageObserver;->b:Lcom/alipay/android/app/source/a;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/alipay/android/app/source/SourceMessageObserver;->a:I

    return v0
.end method

.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/source/SourceMessageObserver;->b:Lcom/alipay/android/app/source/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/source/a;->a(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 21
    return-void
.end method
