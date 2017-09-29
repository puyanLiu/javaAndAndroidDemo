.class Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;->this$1:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    iput p2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;->val$position:I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 251
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;->this$1:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getRealCount()I

    move-result v1

    rem-int v1, v0, v1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onClick:pos"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " callback:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;->this$1:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->access$1(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$1(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerItemClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->d(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;->this$1:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;->this$1:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;

    .line 256
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;->this$1:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->access$1(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$1(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;->this$1:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->access$1(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$1(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerItemClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;->this$1:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->access$1(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerItemClickListener;->onClick(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;ILcom/alipay/mobile/beehive/compositeui/banner/BannerItem;)V

    goto :goto_0
.end method
