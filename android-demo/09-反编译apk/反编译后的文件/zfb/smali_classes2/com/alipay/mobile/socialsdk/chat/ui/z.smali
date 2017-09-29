.class final Lcom/alipay/mobile/socialsdk/chat/ui/z;
.super Ljava/lang/Object;
.source "ShareEntryActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Landroid/database/Cursor;ZIZ)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->e:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->a:Landroid/database/Cursor;

    iput-boolean p3, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->b:Z

    iput p4, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->c:I

    iput-boolean p5, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->e:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->e:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->a:Landroid/database/Cursor;

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->b:Z

    iget v3, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->c:I

    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/chat/ui/z;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Landroid/database/Cursor;ZIZ)V

    .line 120
    :cond_0
    return-void
.end method
