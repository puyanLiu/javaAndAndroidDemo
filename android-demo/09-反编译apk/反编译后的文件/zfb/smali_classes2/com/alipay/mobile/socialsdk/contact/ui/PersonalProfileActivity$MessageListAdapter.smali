.class Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PersonalProfileActivity.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1378
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;->a:Ljava/util/List;

    .line 1379
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;->b:Landroid/content/Context;

    .line 1380
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1403
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1408
    if-nez p2, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->item_friend_request_message:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1412
    :cond_0
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->message_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 1413
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    return-object p2
.end method
