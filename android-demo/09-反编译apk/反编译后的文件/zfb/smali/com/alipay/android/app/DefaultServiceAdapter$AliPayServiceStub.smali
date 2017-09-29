.class public Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;
.super Lcom/alipay/android/app/IAliPay$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/DefaultServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AliPayServiceStub"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/DefaultServiceAdapter;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/IServiceAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/DefaultServiceAdapter;Lcom/alipay/android/app/IServiceAdapter;)V
    .locals 1

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->a:Lcom/alipay/android/app/DefaultServiceAdapter;

    invoke-direct {p0}, Lcom/alipay/android/app/IAliPay$Stub;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method


# virtual methods
.method public Pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/IServiceAdapter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public deployFastConnect()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 70
    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IServiceAdapter;->a(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 56
    :cond_0
    return-void
.end method

.method public test()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0}, Lcom/alipay/android/app/IServiceAdapter;->a()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/DefaultServiceAdapter$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0}, Lcom/alipay/android/app/IServiceAdapter;->b()V

    .line 64
    :cond_0
    return-void
.end method
