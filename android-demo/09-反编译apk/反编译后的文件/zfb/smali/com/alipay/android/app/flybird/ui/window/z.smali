.class final Lcom/alipay/android/app/flybird/ui/window/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/z;->a:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/z;->a:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/z;->a:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 458
    :cond_0
    return-void
.end method
