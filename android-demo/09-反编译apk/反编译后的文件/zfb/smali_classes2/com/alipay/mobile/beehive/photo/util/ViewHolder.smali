.class public Lcom/alipay/mobile/beehive/photo/util/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field private convertView:Landroid/view/View;

.field private views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;->views:Landroid/util/SparseArray;

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;->convertView:Landroid/view/View;

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static get(Landroid/view/View;)Lcom/alipay/mobile/beehive/photo/util/ViewHolder;
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 18
    instance-of v1, v0, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;

    if-eqz v1, :cond_0

    .line 19
    check-cast v0, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 34
    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;->convertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    :cond_0
    return-object v0
.end method
