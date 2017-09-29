.class final Lcom/alipay/android/app/flybird/ui/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/s;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/s;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/s;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/s;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/s;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->f()V

    .line 431
    :cond_0
    return-void
.end method
