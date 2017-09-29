.class public Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectChatRoomAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;",
            ">;",
            "Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->b:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->b:Ljava/util/ArrayList;

    .line 29
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->toGroupInfo()Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->item_select_chatrom:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/adapter/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/adapter/a;-><init>(Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;)V

    .line 53
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->group_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/contact/adapter/a;->a:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->group_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/contact/adapter/a;->b:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->member_count:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/contact/adapter/a;->c:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v2, v1, Lcom/alipay/mobile/socialsdk/contact/adapter/a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, v1, Lcom/alipay/mobile/socialsdk/contact/adapter/a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/socialsdk/R$string;->format_member_count:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->memberCount:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 61
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->icon:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/adapter/a;->a:Landroid/widget/ImageView;

    .line 64
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SelectChatRoomAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/socialsdk/R$drawable;->ic_default_group:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 63
    invoke-virtual {v2, v0, v1, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 65
    return-object p2

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/adapter/a;

    move-object v1, v0

    goto :goto_0
.end method
