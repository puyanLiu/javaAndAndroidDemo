.class final Lcom/alipay/mobile/socialsdk/api/view/b;
.super Ljava/lang/Object;
.source "FriendsChooseWidget.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText$OnDelKeyClickedListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/b;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDelKeyClicked()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/b;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->g(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/socialsdk/api/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/d;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/b;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->h(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/b;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->c(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/b;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/b;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->g(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/socialsdk/api/view/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/api/view/d;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;I)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/b;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->i(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/b;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->j(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/b;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->g(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/socialsdk/api/view/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/api/view/d;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setSelection(I)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/b;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->g(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/socialsdk/api/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/d;->notifyDataSetChanged()V

    goto :goto_0
.end method
