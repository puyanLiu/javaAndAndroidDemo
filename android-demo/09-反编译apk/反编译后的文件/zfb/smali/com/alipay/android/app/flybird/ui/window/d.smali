.class final Lcom/alipay/android/app/flybird/ui/window/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/d;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/d;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/d;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 753
    :cond_0
    return-void
.end method
