.class final Lcom/alipay/mobile/socialsdk/api/view/c;
.super Ljava/lang/Object;
.source "FriendsChooseWidget.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/c;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/c;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0, p3}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;I)V

    .line 117
    return-void
.end method
