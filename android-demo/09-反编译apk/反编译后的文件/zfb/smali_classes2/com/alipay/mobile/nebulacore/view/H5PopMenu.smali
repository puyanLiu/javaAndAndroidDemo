.class public abstract Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
.super Ljava/lang/Object;
.source "H5PopMenu.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PopMenu"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/widget/PopupWindow;

.field d:Lcom/alipay/mobile/h5container/api/H5Page;

.field e:Lcom/alipay/mobile/nebulacore/view/TitleProvider;

.field f:Z

.field g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->g:Landroid/view/View$OnClickListener;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->initMenu()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    .line 222
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->name:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    iput-object p2, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 230
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    .line 231
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addMenu(ILcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getMenuIcon()V
    .locals 6

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    return-void

    .line 194
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    .line 195
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->e:Ljava/lang/String;

    .line 196
    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->f:Z

    .line 197
    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->name:Ljava/lang/String;

    .line 198
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 199
    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 203
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/ImageUtil;->byteToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 204
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/web/H5ImageLoader;

    new-instance v5, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;

    invoke-direct {v5, p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;-><init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;Ljava/lang/String;)V

    invoke-direct {v4, v2, v5}, Lcom/alipay/mobile/nebulacore/web/H5ImageLoader;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5ImageLoader$ImageListener;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public hasMenu(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 78
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_2

    move v0, v1

    .line 78
    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    .line 74
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1
.end method

.method public abstract initMenu()V
.end method

.method public removeMenu(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    .line 252
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 250
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method public resetMenu()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->initMenu()V

    .line 281
    :cond_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    .line 273
    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->c:Z

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 271
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public setMenu(Lcom/alipay/mobile/h5container/api/H5Event;Z)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "reset"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->resetMenu()V

    .line 191
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string/jumbo v1, "menus"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 89
    const-string/jumbo v1, "override"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    :cond_1
    if-eqz p2, :cond_3

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    :cond_2
    const-string/jumbo v0, "H5PopMenu"

    const-string/jumbo v1, "menu not set"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v2

    move v3, v2

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 108
    if-eqz p2, :cond_6

    const/4 v0, 0x5

    if-lt v3, v0, :cond_6

    .line 109
    const-string/jumbo v0, "H5PopMenu"

    const-string/jumbo v1, "reach max temp count!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    .line 103
    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->c:Z

    if-eqz v0, :cond_5

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 101
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 113
    :cond_6
    rsub-int/lit8 v6, v3, 0x5

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->b:Ljava/util/List;

    move v3, v2

    .line 116
    :goto_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt v3, v0, :cond_9

    :cond_7
    move v1, v2

    move v3, v4

    move v5, v4

    .line 154
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_12

    .line 171
    if-ne v3, v4, :cond_8

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 175
    const-string/jumbo v1, "ppchatShare"

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 176
    const/4 v3, 0x1

    .line 180
    :cond_8
    :goto_4
    if-ne v5, v4, :cond_17

    .line 184
    :goto_5
    if-eqz p2, :cond_16

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->b:Ljava/util/List;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 190
    :goto_6
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->getMenuIcon()V

    goto/16 :goto_0

    .line 117
    :cond_9
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 118
    const-string/jumbo v0, "name"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string/jumbo v7, "tag"

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 120
    const-string/jumbo v8, "icon"

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 122
    :cond_a
    const-string/jumbo v1, "H5PopMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "invalid tag: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 126
    :cond_b
    invoke-direct {p0, v0, v7}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 127
    const-string/jumbo v1, "H5PopMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "existed tag: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 131
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_d

    .line 132
    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_d
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v9, "ppchatReportAbuse"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    sget v9, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_complain:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    :goto_8
    new-instance v9, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    invoke-direct {v9, v0, v7, v1, p2}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 136
    iput-object v8, v9, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->e:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_7

    .line 138
    const-string/jumbo v0, "ppchatShare"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 142
    iput-boolean v2, v9, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->c:Z

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, v2, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 134
    :cond_e
    const-string/jumbo v9, "ppchatShare"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    sget v9, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_share_friend:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_8

    :cond_f
    sget v9, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_default:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_8

    .line 144
    :cond_10
    const-string/jumbo v0, "ppchatReportAbuse"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 145
    iput-boolean v2, v9, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->c:Z

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 148
    :cond_11
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->b:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 155
    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    .line 156
    iget-boolean v6, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->c:Z

    if-eqz v6, :cond_14

    .line 157
    if-gez v3, :cond_13

    move v3, v1

    .line 154
    :cond_13
    :goto_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 163
    :cond_14
    if-gez v5, :cond_13

    .line 164
    if-nez v1, :cond_15

    const-string/jumbo v6, "ppchatShare"

    .line 165
    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_15
    move v5, v1

    .line 166
    goto :goto_9

    .line 187
    :cond_16
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->b:Ljava/util/List;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto/16 :goto_6

    :cond_17
    move v2, v5

    goto/16 :goto_5

    :cond_18
    move v3, v2

    goto/16 :goto_4
.end method

.method public setTitleProvider(Lcom/alipay/mobile/nebulacore/view/TitleProvider;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->e:Lcom/alipay/mobile/nebulacore/view/TitleProvider;

    .line 61
    return-void
.end method

.method public abstract showMenu(Landroid/view/View;)V
.end method
