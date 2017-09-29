.class Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;
.super Ljava/lang/Object;
.source "EmotionsLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getAllEmoiPackageModelList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$1(Lcom/alipay/mobile/emotion/view/EmotionsLayout;Ljava/util/List;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmoiPageModelList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$2(Lcom/alipay/mobile/emotion/view/EmotionsLayout;Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;-><init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$3(Lcom/alipay/mobile/emotion/view/EmotionsLayout;Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$4(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$5(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$6(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$7(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$8(Lcom/alipay/mobile/emotion/view/EmotionsLayout;Ljava/lang/String;)I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;->this$1:Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$7(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$9(Lcom/alipay/mobile/emotion/view/EmotionsLayout;ILjava/lang/String;)V

    .line 129
    return-void
.end method
