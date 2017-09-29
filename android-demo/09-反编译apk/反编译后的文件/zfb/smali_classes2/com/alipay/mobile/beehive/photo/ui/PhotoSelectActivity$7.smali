.class Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;
.super Ljava/lang/Object;
.source "PhotoSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

.field private final synthetic val$photoMenu:Lcom/alipay/mobile/beehive/service/PhotoMenu;

.field private final synthetic val$toDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;Ljava/util/List;Lcom/alipay/mobile/beehive/service/PhotoMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->val$toDelete:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->val$photoMenu:Lcom/alipay/mobile/beehive/service/PhotoMenu;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 586
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 588
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$25(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$7(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    .line 590
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$20(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$20(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    sget v1, Lcom/alipay/mobile/beehive/R$id;->tv_no_photo:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 592
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$4(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->previewListener:Lcom/alipay/mobile/beehive/service/PhotoBrowseListener;

    .line 596
    if-eqz v0, :cond_2

    .line 597
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->val$toDelete:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;->val$photoMenu:Lcom/alipay/mobile/beehive/service/PhotoMenu;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/service/PhotoBrowseListener;->onBottomMenuClick(Landroid/app/Activity;Ljava/util/List;Lcom/alipay/mobile/beehive/service/PhotoMenu;)Z

    .line 599
    :cond_2
    return-void
.end method
