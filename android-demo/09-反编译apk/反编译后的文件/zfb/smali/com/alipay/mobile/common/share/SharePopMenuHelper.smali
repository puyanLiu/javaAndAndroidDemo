.class public Lcom/alipay/mobile/common/share/SharePopMenuHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharePopList(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/share/ShareItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getResId()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :sswitch_0
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/ui/R$string;->share_to_sms:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->menu_share_sms:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_1
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/ui/R$string;->share_to_contact:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->menu_share_contact:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_2
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/ui/R$string;->share_to_weibo:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->menu_share_weibo:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_3
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/ui/R$string;->share_to_laiwang:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->menu_share_laiwang:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_4
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/ui/R$string;->share_to_laiwang_timeline:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->menu_share_laiwang_timeline:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_5
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/ui/R$string;->share_to_qq:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->menu_share_qq:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :sswitch_6
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/ui/R$string;->share_to_qzone:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->menu_share_qzone:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :sswitch_7
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/ui/R$string;->share_to_weixin:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->menu_share_weixin:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :sswitch_8
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/ui/R$string;->share_to_weixin_timeline:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->menu_share_weixin_timeline:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :sswitch_9
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/ui/R$string;->share_to_linkcopy:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->menu_share_linkcopy:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setType(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    move-object v0, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_7
        0x10 -> :sswitch_8
        0x20 -> :sswitch_9
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
        0x400 -> :sswitch_1
    .end sparse-switch
.end method
