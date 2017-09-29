.class public final Lcom/alipay/android/phone/a/a/j;
.super Lcom/alipay/android/phone/a/a/b;
.source "ServerDataSource.java"


# instance fields
.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private C:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/a/a/b;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->w:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->y:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->z:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->A:Ljava/util/Map;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/a/a/j;->d:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/android/phone/a/a/j;->b:Z

    .line 45
    iput-boolean v1, p0, Lcom/alipay/android/phone/a/a/j;->e:Z

    .line 46
    const-string/jumbo v0, "publicplatform"

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->o:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->B:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/a/a/j;)Lcom/alipay/android/app/template/service/DynamicTemplateService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->B:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 131
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "group id :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-boolean p3, p0, Lcom/alipay/android/phone/a/a/j;->b:Z

    .line 133
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->r:Lcom/alipay/android/phone/a/a/h;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->r:Lcom/alipay/android/phone/a/a/h;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->t:Ljava/lang/String;

    const-string/jumbo v2, "server"

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/phone/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    :cond_2
    :goto_0
    return-void

    .line 146
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 148
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;

    .line 149
    new-instance v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 150
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->actionParam:Ljava/lang/String;

    iput-object v1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 151
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->actionType:Ljava/lang/String;

    iput-object v1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionType:Ljava/lang/String;

    .line 152
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->bizId:Ljava/lang/String;

    iput-object v1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    .line 153
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->desc:Ljava/lang/String;

    iput-object v1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    .line 154
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->icon:Ljava/lang/String;

    iput-object v1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    .line 155
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->name:Ljava/lang/String;

    iput-object v1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    .line 156
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->templateId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v1, 0x0

    :goto_2
    iput-object v1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    .line 157
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->ext:Ljava/util/Map;

    iput-object v1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    .line 158
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->ext:Ljava/util/Map;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iput-object v1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    .line 159
    iput-object p1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->group:Ljava/lang/String;

    .line 160
    iput-boolean v3, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->fromServer:Z

    .line 161
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->actIcons:Ljava/util/List;

    iput-object v1, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actIcons:Ljava/util/List;

    .line 162
    invoke-virtual {v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->toJson()Lcom/alibaba/fastjson/JSONObject;

    .line 163
    iput v2, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->position:I

    .line 164
    add-int/lit8 v1, v2, 0x1

    .line 165
    iget-object v2, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_5

    iget-object v2, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v7, "actionParam"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 166
    iget-object v2, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v7, "actionParam"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 169
    :cond_5
    const-string/jumbo v2, "flybird"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "groupId : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " templateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/alipay/android/phone/a/a/j;->A:Ljava/util/Map;

    iget-object v7, v6, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    iget-object v8, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->templateJson:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string/jumbo v2, "jiushi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "get from server : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->bizId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " templateId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->templateId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_1

    .line 156
    :cond_6
    const-string/jumbo v7, "APGlobalSearch.bundle/bd/"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/a/a/j;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->A:Ljava/util/Map;

    return-object v0
.end method

.method private h()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 205
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 210
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    sget-boolean v0, Lcom/alipay/android/phone/a/a/b;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->q:Lcom/alipay/android/phone/a/a/h;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->q:Lcom/alipay/android/phone/a/a/h;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->t:Ljava/lang/String;

    const-string/jumbo v2, "server"

    invoke-interface {v0, v1, v2, v7}, Lcom/alipay/android/phone/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "mainPageNotifyer refresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    .line 213
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->w:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->y:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lcom/alipay/android/phone/a/a/j;->z:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    const-string/jumbo v3, "jiushi"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "groupName : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " groupId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " , moreLinkName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " listsize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 220
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v13, :cond_8

    .line 222
    const-string/jumbo v3, "gift"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 223
    iget-object v3, p0, Lcom/alipay/android/phone/a/a/j;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->e(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->e(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v3, v6

    .line 227
    :goto_4
    if-lt v3, v13, :cond_7

    .line 231
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->k:Ljava/util/List;

    invoke-static {v4, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {v4, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_5
    :goto_5
    invoke-static {v4, v9}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 249
    const-string/jumbo v1, "server"

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v6

    :goto_6
    invoke-static {v1, v0}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 217
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 218
    const-string/jumbo v10, "jiushi"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "name :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ++ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v3, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->group:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 228
    :cond_7
    iget-object v10, p0, Lcom/alipay/android/phone/a/a/j;->k:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 236
    :cond_8
    const-string/jumbo v3, "gift"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 237
    iget-object v3, p0, Lcom/alipay/android/phone/a/a/j;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->e(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->e(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->k:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    invoke-interface {v9, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->k:Ljava/util/List;

    invoke-static {v4, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {v4, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_a
    move v0, v7

    .line 249
    goto/16 :goto_6
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
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
    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showAll : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    if-eqz p2, :cond_0

    .line 276
    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->w:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->e(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    new-instance v0, Lcom/alipay/android/phone/a/a/k;

    invoke-direct {v0, p0, v2}, Lcom/alipay/android/phone/a/a/k;-><init>(Lcom/alipay/android/phone/a/a/j;Ljava/util/List;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 292
    :goto_0
    return-object v2

    .line 290
    :cond_1
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "listTemp is null : group id is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;ZIJ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 51
    if-nez p1, :cond_2

    .line 52
    const-string/jumbo v0, "server"

    invoke-static {v0, v8}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Z)V

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->r:Lcom/alipay/android/phone/a/a/h;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->r:Lcom/alipay/android/phone/a/a/h;

    invoke-interface {v0}, Lcom/alipay/android/phone/a/a/h;->a()V

    .line 56
    :cond_0
    sget-boolean v0, Lcom/alipay/android/phone/a/a/b;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->q:Lcom/alipay/android/phone/a/a/h;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->q:Lcom/alipay/android/phone/a/a/h;

    const/4 v1, 0x0

    const-string/jumbo v2, "server"

    invoke-interface {v0, v1, v2, v7}, Lcom/alipay/android/phone/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "mainPageNotifyer refresh, server"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    iget-object v0, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->query:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->t:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->groupRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    const-string/jumbo v1, "bill"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    const-string/jumbo v0, "jiushi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "group is null , and "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    const-string/jumbo v1, "bill"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    const-string/jumbo v1, "bill"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    const-string/jumbo v1, "bill"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    iget-object v0, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->groupRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 75
    iget-object v0, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->groupRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    const-string/jumbo v0, "server"

    invoke-static {v0, v8}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Z)V

    .line 78
    :cond_4
    const-string/jumbo v0, "cost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "bucketId"

    iget-object v1, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->bucketId:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v0, "local"

    const-string/jumbo v1, "n"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->t:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->searchId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/a/a/l;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/phone/a/a/l;-><init>(Lcom/alipay/android/phone/a/a/j;Ljava/lang/ref/WeakReference;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 83
    invoke-direct {p0}, Lcom/alipay/android/phone/a/a/j;->h()V

    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->r:Lcom/alipay/android/phone/a/a/h;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->r:Lcom/alipay/android/phone/a/a/h;

    iget-object v1, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->query:Ljava/lang/String;

    const-string/jumbo v2, "server"

    invoke-interface {v0, v1, v2, v7}, Lcom/alipay/android/phone/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "morePageNotifyer refresh, server"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;

    .line 72
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    const-string/jumbo v4, "publicplatform"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/alipay/android/phone/a/a/b;->h:Z

    if-nez v1, :cond_6

    const-string/jumbo v1, "publicplatformclient"

    invoke-static {v1}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/a/a/i;

    invoke-virtual {v1}, Lcom/alipay/android/phone/a/a/i;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    sput-boolean v7, Lcom/alipay/android/phone/a/a/o;->a:Z

    :cond_6
    const-string/jumbo v1, "jiushi\t"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "groupRecord.groupId : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " hasMore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->hasMore:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    const-string/jumbo v4, "bill"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    if-ne p3, v1, :cond_8

    iget-boolean v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->hasMore:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->w:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->y:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->moreLinkName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->z:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->moreLinkUrl:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v4, "jiushiFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "groupId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", groupName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " oldIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "groupCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->count:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->hits:Ljava/util/List;

    iget-boolean v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->hasMore:Z

    invoke-direct {p0, v1, v4, v5}, Lcom/alipay/android/phone/a/a/j;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 73
    :cond_7
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->count:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 72
    :cond_8
    const-string/jumbo v1, "jiushi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isbillMore : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->hasMore:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v1, "jiushiFrame"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "groupId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", groupName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", groupCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method public final a(Lcom/alipay/android/phone/a/a/h;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/a/a/b;->a(Lcom/alipay/android/phone/a/a/h;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 355
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 334
    const-string/jumbo v1, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "groupId + "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/j;->C:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 304
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/a/a/o;->a:Z

    .line 305
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 306
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 307
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 308
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 310
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    invoke-static {}, Lcom/alipay/android/phone/a/a/o;->d()V

    .line 312
    return-void
.end method

.method public final g()Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/j;->C:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    return-object v0
.end method
