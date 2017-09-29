.class public Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;
.super Lcom/alipay/android/app/IAlixPay$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/WallServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlixPayServiceStub"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/WallServiceAdapter;

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
.method public constructor <init>(Lcom/alipay/android/app/WallServiceAdapter;Lcom/alipay/android/app/IServiceAdapter;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->a:Lcom/alipay/android/app/WallServiceAdapter;

    invoke-direct {p0}, Lcom/alipay/android/app/IAlixPay$Stub;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method


# virtual methods
.method public Pay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IServiceAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public deployFastConnect()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 125
    :cond_0
    return-void
.end method

.method public manager(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IServiceAdapter;->b(Ljava/lang/String;)Z

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prePay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0}, Lcom/alipay/android/app/IServiceAdapter;->c()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IServiceAdapter;->a(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 103
    :cond_0
    return-void
.end method

.method public test()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0}, Lcom/alipay/android/app/IServiceAdapter;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0}, Lcom/alipay/android/app/IServiceAdapter;->b()V

    .line 111
    :cond_0
    return-void
.end method
