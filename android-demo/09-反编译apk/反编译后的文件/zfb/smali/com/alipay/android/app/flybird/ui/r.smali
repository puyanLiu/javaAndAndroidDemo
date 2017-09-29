.class final Lcom/alipay/android/app/flybird/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field final synthetic d:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/r;->d:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/r;->c:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/r;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/r;->d:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/r;->d:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/r;->c:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/r;->d:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/r;->d:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->c()V

    goto :goto_0
.end method
