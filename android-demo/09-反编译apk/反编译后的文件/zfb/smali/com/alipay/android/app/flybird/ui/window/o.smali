.class final Lcom/alipay/android/app/flybird/ui/window/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/n;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/n;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/n;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->c:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->d:I

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;

    .line 582
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/n;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;

    .line 583
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/n;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "flybird_fullscreen_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 589
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f()V

    .line 590
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->e()V

    .line 591
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)V

    .line 576
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->e(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->e(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)V

    .line 578
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/o;->a:Lcom/alipay/android/app/flybird/ui/window/n;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/n;->b:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
