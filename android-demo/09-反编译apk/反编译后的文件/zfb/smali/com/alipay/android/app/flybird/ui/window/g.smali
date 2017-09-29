.class final Lcom/alipay/android/app/flybird/ui/window/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/e;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/e;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/e;->g:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/content/DialogInterface;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/e;->g:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 336
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/e;->g:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/e;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 337
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/e;->g:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
