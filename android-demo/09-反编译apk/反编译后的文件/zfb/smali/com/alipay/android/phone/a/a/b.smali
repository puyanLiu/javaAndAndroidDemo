.class public Lcom/alipay/android/phone/a/a/b;
.super Ljava/lang/Object;
.source "BaseDataSource.java"


# static fields
.field protected static h:Z

.field protected static i:Z


# instance fields
.field protected final a:Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:I

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Lcom/alipay/android/phone/a/a/h;

.field protected r:Lcom/alipay/android/phone/a/a/h;

.field protected s:Lcom/alipay/android/phone/a/a/h;

.field protected t:Ljava/lang/String;

.field private final u:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private v:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

.field private w:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/alipay/android/phone/a/a/b;->h:Z

    .line 35
    sput-boolean v0, Lcom/alipay/android/phone/a/a/b;->i:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->b:Z

    .line 28
    iput-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->c:Z

    .line 29
    iput-boolean v1, p0, Lcom/alipay/android/phone/a/a/b;->d:Z

    .line 30
    iput-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->e:Z

    .line 31
    iput-boolean v1, p0, Lcom/alipay/android/phone/a/a/b;->f:Z

    .line 32
    iput v0, p0, Lcom/alipay/android/phone/a/a/b;->g:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->j:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->l:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->m:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->u:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->u:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->a:Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    .line 59
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/b;->v:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->e:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->f:Z

    if-nez v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->b:Z

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/b;->w:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->q:Lcom/alipay/android/phone/a/a/h;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/phone/a/a/b;->h:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->q:Lcom/alipay/android/phone/a/a/h;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/b;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/android/phone/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mainPageNotifyer refresh"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_5

    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    iget-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->b:Z

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/b;->w:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v1, v2

    .line 161
    :goto_2
    if-lt v1, v4, :cond_6

    .line 164
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/b;->w:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    :cond_6
    iget-object v3, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->m:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/alipay/android/phone/a/a/b;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    if-eqz p2, :cond_0

    .line 178
    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->d(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/a/a/b;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    :cond_1
    return-object v0
.end method

.method public final a(Lcom/alipay/android/phone/a/a/h;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alipay/android/phone/a/a/b;->q:Lcom/alipay/android/phone/a/a/h;

    .line 208
    return-void
.end method

.method public a(Lcom/alipay/android/phone/a/a/h;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/a/a/b;->h:Z

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/phone/a/a/b;->r:Lcom/alipay/android/phone/a/a/h;

    .line 215
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 235
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clearMoreData : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/a/a/b;->g:I

    .line 237
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->v:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->d(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->v:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->f(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->w:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 66
    :cond_0
    sget-boolean v0, Lcom/alipay/android/phone/a/a/b;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->r:Lcom/alipay/android/phone/a/a/h;

    if-nez v0, :cond_2

    .line 67
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "addNewData ,isMore Mode ,return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    const-string/jumbo v0, "onSearchResults"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addNewData!! queryword is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , currentword is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v2, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Z)V

    .line 75
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->currentTime:J

    sub-long/2addr v2, v4

    .line 76
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string/jumbo v0, "cost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v0, "local"

    const-string/jumbo v2, "y"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v2, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v0, "group"

    iget-object v2, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v2, "number"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v4}, Lcom/alipay/android/phone/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_4
    iget-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->c:Z

    iput-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->b:Z

    .line 87
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 88
    const-string/jumbo v0, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addNewData!! queryword is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , currentword is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 92
    sget-boolean v0, Lcom/alipay/android/phone/a/a/b;->i:Z

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->s:Lcom/alipay/android/phone/a/a/h;

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->s:Lcom/alipay/android/phone/a/a/h;

    iget-object v2, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-interface {v0, p2, v2, v1}, Lcom/alipay/android/phone/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    :cond_4
    :goto_6
    iput-boolean v1, p0, Lcom/alipay/android/phone/a/a/b;->e:Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 72
    goto/16 :goto_1

    .line 79
    :cond_6
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_2

    .line 81
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_3

    .line 83
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 89
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 90
    iget-object v3, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->group:Ljava/lang/String;

    goto :goto_5

    .line 98
    :cond_9
    sget-boolean v0, Lcom/alipay/android/phone/a/a/b;->h:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->r:Lcom/alipay/android/phone/a/a/h;

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->r:Lcom/alipay/android/phone/a/a/h;

    iget-object v2, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-interface {v0, p2, v2, v1}, Lcom/alipay/android/phone/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    .line 104
    :cond_a
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 105
    const-string/jumbo v0, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mainPageAllData add : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    const-string/jumbo v0, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "morePageData add : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    const-string/jumbo v0, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createDisplayData add : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    invoke-direct {p0}, Lcom/alipay/android/phone/a/a/b;->g()V

    goto/16 :goto_6

    .line 116
    :cond_b
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queryword is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , currentword is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , ahhhhh,drop twice !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_c
    sget-boolean v0, Lcom/alipay/android/phone/a/a/b;->i:Z

    if-nez v0, :cond_1

    .line 124
    sget-boolean v0, Lcom/alipay/android/phone/a/a/b;->h:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->r:Lcom/alipay/android/phone/a/a/h;

    if-eqz v0, :cond_d

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->r:Lcom/alipay/android/phone/a/a/h;

    iget-object v2, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-interface {v0, p2, v2, v1}, Lcom/alipay/android/phone/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    :cond_d
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->q:Lcom/alipay/android/phone/a/a/h;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alipay/android/phone/a/a/b;->h:Z

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->q:Lcom/alipay/android/phone/a/a/h;

    iget-object v2, p0, Lcom/alipay/android/phone/a/a/b;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/android/phone/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    const-string/jumbo v0, "search\t"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mainPageNotifyer,group is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/a/a/b;->i:Z

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->s:Lcom/alipay/android/phone/a/a/h;

    .line 192
    return-void
.end method

.method public final b(Lcom/alipay/android/phone/a/a/h;)V
    .locals 1

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/a/a/b;->i:Z

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/phone/a/a/b;->s:Lcom/alipay/android/phone/a/a/h;

    .line 222
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->b:Z

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/alipay/android/phone/a/a/b;->g:I

    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->d:Z

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/a/a/b;->b:Z

    .line 198
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/a/a/b;->h:Z

    .line 199
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "quit more mode!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/b;->k:Ljava/util/List;

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 225
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clear all data : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/a/a/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/a/a/b;->g:I

    .line 230
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->v:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 260
    iput-object v0, p0, Lcom/alipay/android/phone/a/a/b;->w:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 261
    return-void
.end method
