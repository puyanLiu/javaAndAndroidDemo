.class public Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
.super Landroid/support/v4/app/Fragment;
.source "H5Fragment.java"


# static fields
.field public static backGroundPop:Z


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/nebulacore/ui/H5Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/alipay/mobile/nebulacore/web/H5WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->backGroundPop:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Z

    .line 30
    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 167
    const-string/jumbo v0, "showTitleBar"

    invoke-static {v6, v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string/jumbo v0, ""

    const-string/jumbo v1, "force to hide title bar!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "showToolBar"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    const-string/jumbo v0, "H5 start params:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 176
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 182
    const-string/jumbo v0, "showOptionMenu"

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    const-string/jumbo v0, "appId"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->isH5AppId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 185
    :goto_1
    const-string/jumbo v7, "showOptionMenu"

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "url"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_ENTRY_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 196
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 299
    return-void

    .line 176
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 178
    const-string/jumbo v9, "\n[%s ==> %s]"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v2

    aput-object v8, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    move v0, v3

    .line 184
    goto :goto_1

    .line 196
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 199
    const-string/jumbo v1, "showTitleBar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 200
    invoke-static {v6, v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 201
    if-eqz v0, :cond_7

    .line 202
    const-string/jumbo v0, "showTitlebar"

    move-object v1, v0

    move-object v0, v4

    .line 295
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 296
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_2

    .line 204
    :cond_7
    const-string/jumbo v0, "hideTitlebar"

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 206
    :cond_8
    const-string/jumbo v1, "showToolBar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 207
    invoke-static {v6, v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 208
    if-eqz v0, :cond_9

    .line 209
    const-string/jumbo v0, "showToolbar"

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 211
    :cond_9
    const-string/jumbo v0, "hideToolbar"

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 213
    :cond_a
    const-string/jumbo v1, "showFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 214
    invoke-static {v6, v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 215
    if-eqz v0, :cond_b

    .line 216
    const-string/jumbo v0, "showFavorites"

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 218
    :cond_b
    const-string/jumbo v0, "hideFavorites"

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 220
    :cond_c
    const-string/jumbo v1, "showReportBtn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 221
    invoke-static {v6, v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 222
    if-eqz v0, :cond_d

    .line 223
    const-string/jumbo v0, "showReportBtn"

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 225
    :cond_d
    const-string/jumbo v0, "hideReportBtn"

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 227
    :cond_e
    const-string/jumbo v1, "defaultTitle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 228
    invoke-static {v6, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 230
    const-string/jumbo v0, "setTitle"

    .line 233
    const-string/jumbo v8, "title"

    invoke-virtual {v4, v8, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v1, "fromJS"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v1, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_3

    .line 235
    :cond_f
    const-string/jumbo v1, "readTitle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 236
    invoke-static {v6, v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    .line 237
    const-string/jumbo v1, "readTitle"

    .line 238
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    goto/16 :goto_3

    .line 239
    :cond_10
    const-string/jumbo v1, "toolbarMenu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 240
    invoke-static {v6, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 242
    const-string/jumbo v1, "setToolbarMenu"

    goto/16 :goto_3

    .line 243
    :cond_11
    const-string/jumbo v1, "showTitleLoading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 244
    invoke-static {v6, v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 246
    if-eqz v0, :cond_12

    const-string/jumbo v0, "showTitleLoading"

    :goto_4
    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_3

    .line 247
    :cond_12
    const-string/jumbo v0, "hideTitleLoading"

    goto :goto_4

    .line 248
    :cond_13
    const-string/jumbo v1, "pullRefresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 249
    invoke-static {v6, v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 250
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v0, "pullRefresh"

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_3

    .line 252
    :cond_14
    const-string/jumbo v1, "canPullDown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 253
    invoke-static {v6, v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 254
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v0, "canPullDown"

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_3

    .line 256
    :cond_15
    const-string/jumbo v1, "showDomain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 257
    invoke-static {v6, v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 258
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v0, "showDomain"

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_3

    .line 260
    :cond_16
    const-string/jumbo v1, "showProgress"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 261
    invoke-static {v6, v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 262
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string/jumbo v0, "showProgressBar"

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_3

    .line 264
    :cond_17
    const-string/jumbo v1, "showOptionMenu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 266
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_1e

    .line 268
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 269
    const-string/jumbo v8, "YES"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v3

    .line 278
    :goto_5
    if-eqz v0, :cond_1a

    const-string/jumbo v0, "showOptionMenu"

    :goto_6
    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_3

    .line 271
    :cond_18
    const-string/jumbo v0, "NO"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v2

    .line 272
    goto :goto_5

    .line 274
    :cond_19
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 275
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5

    .line 279
    :cond_1a
    const-string/jumbo v0, "hideOptionMenu"

    goto :goto_6

    .line 280
    :cond_1b
    const-string/jumbo v1, "prefetchLocation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 281
    invoke-static {v6, v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 283
    if-eqz v0, :cond_1d

    .line 284
    const-string/jumbo v0, "prefetchLocation"

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_3

    .line 286
    :cond_1c
    const-string/jumbo v1, "shareChannels"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 287
    invoke-static {v6, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 289
    const-string/jumbo v1, "setShareChannels"

    .line 292
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto/16 :goto_3

    :cond_1d
    move-object v0, v4

    move-object v1, v5

    goto/16 :goto_3

    :cond_1e
    move v0, v2

    goto :goto_5
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAttach "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c:Ljava/lang/ref/WeakReference;

    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 73
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreateView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Landroid/view/View;

    if-nez v0, :cond_2

    .line 77
    sget v0, Lcom/alipay/mobile/nebulacore/R$layout;->h5_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Landroid/view/View;

    .line 78
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;-><init>(Landroid/app/Activity;)V

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->createPage(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    .line 80
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->refreshView(Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setH5Fragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParams()V

    .line 83
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a()V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "backgroundColor"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5PageData;->walletServiceStart:J

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Landroid/view/View;

    return-object v0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 90
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 91
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 319
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Z

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Z

    .line 323
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDestroy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exitPage()Z

    .line 326
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Landroid/view/View;

    .line 327
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    .line 328
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 333
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 334
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDestroyView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 337
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 59
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDetach "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 304
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 303
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 307
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    .line 308
    const-string/jumbo v2, "h5PagePhysicalBack"

    const/4 v3, 0x0

    .line 307
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 311
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 304
    goto :goto_0

    :cond_1
    move v0, v1

    .line 311
    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 113
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPause "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 105
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onResume "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 341
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 342
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSaveInstanceState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 345
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 121
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Z

    if-nez v0, :cond_3

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Z

    .line 142
    :cond_2
    :goto_1
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string/jumbo v1, "H5Fragment"

    const-string/jumbo v2, "webview onResume exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "h5PageResume"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 147
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "h5PagePause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 161
    :cond_1
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string/jumbo v1, "H5Fragment"

    const-string/jumbo v2, "webview onPause exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 349
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 350
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onViewStateRestored "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 353
    return-void
.end method
