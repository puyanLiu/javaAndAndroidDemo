.class final Lcom/alipay/mobile/personalbase/view/a;
.super Ljava/lang/Object;
.source "SingleChoiceContextMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

.field private final synthetic b:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/view/a;->a:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    iput-object p2, p0, Lcom/alipay/mobile/personalbase/view/a;->b:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/a;->a:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->dismiss()V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/a;->b:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/a;->b:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;

    iget v0, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    invoke-interface {v1, v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;->onItemClick(I)V

    .line 128
    :cond_0
    return-void
.end method
