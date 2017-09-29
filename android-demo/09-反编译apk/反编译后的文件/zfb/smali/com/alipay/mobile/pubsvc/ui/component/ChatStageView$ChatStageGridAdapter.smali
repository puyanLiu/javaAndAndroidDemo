.class public Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatStageView.java"


# instance fields
.field private a:I

.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;I)V
    .locals 1

    .prologue
    .line 323
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->a:I

    .line 324
    iput p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->a:I

    .line 325
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 334
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->a:I

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 335
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$3(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 343
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 348
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 350
    :cond_0
    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    invoke-direct {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;-><init>()V

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 352
    sget v2, Lcom/alipay/mobile/publicsvc/common/R$layout;->chat_stage_grid_item:I

    const/4 v3, 0x0

    .line 351
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 353
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->grid_item_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->root:Landroid/view/View;

    .line 354
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->grid_item_rl:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appItemView:Landroid/view/View;

    .line 355
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->appname_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appName:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 357
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 359
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->app_not_valid:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appNotEnableIv:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 361
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->app_new:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appNewIv:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 363
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->app_state_install_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appInstallTv:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 365
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->chat_stage_install_progressbar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APProgressBar;

    iput-object v0, v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    .line 367
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    .line 372
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 374
    if-nez v6, :cond_2

    .line 375
    iget-object v0, v7, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->root:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 376
    iget-object v0, v7, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->root:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$9(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    return-object p2

    .line 369
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    move-object v7, v0

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, v7, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->root:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, v7, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->root:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 380
    iget-object v0, v7, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appItemView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$drawable;->chat_stage_app_item_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 381
    iget-object v0, v7, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appName:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$4(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "app_pre_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$5(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;Ljava/lang/String;)I

    move-result v0

    .line 383
    if-lez v0, :cond_3

    .line 385
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 389
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$6(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$4(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 390
    iget-object v4, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v4}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$7(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v5}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$7(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)I

    move-result v5

    .line 389
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 391
    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$4(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, v7, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appNewIv:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 402
    :goto_3
    iget-object v0, v7, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appItemView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$drawable;->app_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2

    .line 395
    :cond_4
    iget-object v0, v7, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appNewIv:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_3

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$8(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;Ljava/lang/String;Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;)V

    goto :goto_3
.end method
