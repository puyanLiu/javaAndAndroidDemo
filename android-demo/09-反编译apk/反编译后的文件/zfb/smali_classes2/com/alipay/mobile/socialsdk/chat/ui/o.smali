.class final Lcom/alipay/mobile/socialsdk/chat/ui/o;
.super Ljava/lang/Object;
.source "ShareEntryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/database/Cursor;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Ljava/lang/String;Landroid/database/Cursor;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/o;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/ui/o;->c:Landroid/database/Cursor;

    iput p4, p0, Lcom/alipay/mobile/socialsdk/chat/ui/o;->d:I

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 690
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/o;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/o;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/o;->c:Landroid/database/Cursor;

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/mobile/socialsdk/chat/ui/o;->d:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->refreshList(Landroid/database/Cursor;ZIZ)V

    .line 694
    :cond_0
    return-void
.end method
