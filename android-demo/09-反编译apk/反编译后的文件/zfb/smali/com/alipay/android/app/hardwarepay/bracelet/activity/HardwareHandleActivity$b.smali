.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 1

    .prologue
    .line 403
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->c:I

    .line 405
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 408
    iput p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->c:I

    .line 409
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    .line 418
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 427
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 432
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 434
    if-nez p2, :cond_1

    .line 435
    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {v1, v0, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;B)V

    .line 436
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v2, "mini_hardware_item"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 438
    const-string/jumbo v0, "name"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->a:Landroid/widget/TextView;

    .line 439
    const-string/jumbo v0, "tips"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    .line 441
    const-string/jumbo v0, "progress"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->d:Landroid/widget/ProgressBar;

    .line 443
    const-string/jumbo v0, "address"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->b:Landroid/widget/TextView;

    .line 445
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 451
    const-string/jumbo v0, "mini_block_item_top"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 462
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    .line 463
    iget-object v2, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 465
    iget-object v2, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :goto_2
    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 470
    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    :goto_3
    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 486
    iget v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->c:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 487
    iget v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->c:I

    if-ne v0, p1, :cond_0

    .line 488
    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 492
    :cond_0
    return-object p2

    .line 447
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;

    move-object v1, v0

    goto :goto_0

    .line 454
    :cond_2
    if-nez p1, :cond_3

    .line 455
    const-string/jumbo v0, "mini_block_item_top"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 458
    :cond_3
    const-string/jumbo v0, "mini_block_item_normal"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 467
    :cond_4
    iget-object v2, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->b:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 472
    :cond_5
    iget-object v2, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0x41

    if-le v2, v3, :cond_6

    .line 475
    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    const-string/jumbo v2, "mini_bluetooth_signal_high"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 477
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, -0x50

    if-le v0, v2, :cond_7

    .line 478
    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    const-string/jumbo v2, "mini_bluetooth_signal_middle"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 481
    :cond_7
    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    const-string/jumbo v2, "mini_bluetooth_signal_low"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method
