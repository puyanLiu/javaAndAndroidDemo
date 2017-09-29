.class Lcom/alipay/mobile/socialsdk/api/view/q;
.super Ljava/lang/Object;
.source "HorizontalListView.java"


# instance fields
.field private a:I

.field final synthetic c:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 0

    .prologue
    .line 6246
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/q;->c:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V
    .locals 0

    .prologue
    .line 6246
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/q;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 6250
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/q;->c:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/q;->a:I

    .line 6251
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 6254
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/q;->c:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/q;->c:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/q;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
