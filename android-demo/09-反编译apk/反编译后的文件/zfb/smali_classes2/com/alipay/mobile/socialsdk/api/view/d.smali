.class final Lcom/alipay/mobile/socialsdk/api/view/d;
.super Landroid/widget/BaseAdapter;
.source "FriendsChooseWidget.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V
    .locals 1

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;B)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/d;-><init>(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/view/d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->b:Ljava/util/List;

    .line 174
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 189
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 194
    if-nez p2, :cond_1

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->icon_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 197
    new-instance v1, Lcom/alipay/mobile/socialsdk/api/view/e;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/api/view/e;-><init>()V

    .line 198
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/api/view/e;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 199
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_icon_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/api/view/e;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 200
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/api/view/e;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->b(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/alipay/mobile/socialsdk/api/view/e;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 206
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v4}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 205
    invoke-virtual {v2, v0, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/d;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->c(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 208
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/api/view/e;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 211
    :cond_0
    return-object p2

    .line 202
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/e;

    move-object v1, v0

    goto :goto_0
.end method
