.class final Lcom/alipay/android/app/flybird/ui/window/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/r;->a:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/r;->a:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/r;->a:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 236
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/r;->a:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/r;->a:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 239
    return-void
.end method
