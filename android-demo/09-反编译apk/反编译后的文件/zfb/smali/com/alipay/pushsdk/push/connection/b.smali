.class public final Lcom/alipay/pushsdk/push/connection/b;
.super Ljava/lang/Object;
.source "ListenerWrapper.java"


# instance fields
.field private a:Lcom/alipay/pushsdk/push/f/d;

.field private b:Lcom/alipay/pushsdk/push/connection/c;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/f/d;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/b;->a:Lcom/alipay/pushsdk/push/f/d;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/b;->b:Lcom/alipay/pushsdk/push/connection/c;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/b;->b:Lcom/alipay/pushsdk/push/connection/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/b;->b:Lcom/alipay/pushsdk/push/connection/c;

    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/connection/c;->a(Lcom/alipay/pushsdk/push/e/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/b;->a:Lcom/alipay/pushsdk/push/f/d;

    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/f/d;->a(Lcom/alipay/pushsdk/push/e/a;)V

    .line 40
    :cond_1
    return-void
.end method
