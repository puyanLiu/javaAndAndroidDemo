.class public Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5SessionPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5SessionPlugin"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b:Ljava/lang/Boolean;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;Z)I
    .locals 5

    .prologue
    const v2, 0x7fffffff

    .line 199
    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v3

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 227
    :goto_0
    return v0

    .line 205
    :cond_1
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v0

    .line 206
    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-gez v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 208
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 210
    if-nez p2, :cond_3

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 216
    goto :goto_0

    .line 219
    :cond_3
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 220
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 223
    goto :goto_0

    .line 206
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v1, 0xbb8

    const/4 v12, 0x1

    const/high16 v11, -0x80000000

    const/4 v3, 0x0

    .line 231
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 232
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    .line 233
    instance-of v2, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v2, :cond_1

    .line 234
    const-string/jumbo v0, "H5SessionPlugin"

    const-string/jumbo v1, "invalid target!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 239
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 241
    const-string/jumbo v6, "transparent"

    invoke-static {v2, v6, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 242
    const-string/jumbo v0, "H5SessionPlugin"

    const-string/jumbo v1, "can not pushwindow in a transparent window"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 246
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 248
    const-string/jumbo v2, "param"

    invoke-static {v4, v2, v13}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 249
    const-string/jumbo v2, "popToIndex"

    invoke-static {v4, v2, v11}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v8

    .line 250
    const-string/jumbo v2, "waitRender"

    invoke-static {v4, v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 251
    if-gez v2, :cond_3

    move v2, v3

    .line 254
    :cond_3
    if-le v2, v1, :cond_4

    move v2, v1

    .line 257
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 259
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 260
    invoke-static {v1, v7}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    .line 261
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser;->transParamParse(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 262
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v9

    .line 263
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 265
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 268
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 271
    :cond_5
    const-string/jumbo v1, "showFavorites"

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v6, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    const-string/jumbo v1, "url"

    invoke-static {v4, v1, v13}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 275
    const-string/jumbo v0, "can\'t get url parameter!"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    invoke-static {v6, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :cond_7
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v5, v1, v4}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 281
    const-string/jumbo v4, "H5SessionPlugin"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "pushWindow url "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v4, "url"

    invoke-virtual {v6, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string/jumbo v1, "Referer"

    invoke-virtual {v6, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    const-string/jumbo v1, "transparent"

    invoke-static {v6, v1, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 291
    new-instance v1, Landroid/content/Intent;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    .line 292
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;

    .line 291
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 294
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    goto/16 :goto_0

    .line 300
    :cond_8
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v1, :cond_c

    .line 301
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v0

    .line 303
    if-eqz v2, :cond_9

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 304
    :cond_9
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;)V

    .line 319
    :goto_2
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getFragmentCount()I

    move-result v0

    .line 330
    :goto_3
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x5

    if-lt v0, v1, :cond_a

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->sessionwarningpart1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 332
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulacore/R$string;->sessionwarningpart2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 336
    :cond_a
    if-eq v8, v11, :cond_0

    .line 340
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;

    invoke-direct {v0, p0, v7, v8}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alibaba/fastjson/JSONObject;I)V

    .line 345
    const-wide/16 v1, 0x1f4

    .line 340
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 306
    :cond_b
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->init()V

    .line 307
    invoke-virtual {v1, v12}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->setIsIntercept(Z)V

    .line 308
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addPreFragment(Landroid/os/Bundle;)V

    .line 309
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;

    invoke-direct {v3, p0, v1, v0, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Landroid/os/Bundle;)V

    .line 316
    int-to-long v4, v2

    .line 309
    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMainHandler(Ljava/lang/Runnable;J)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->setPreHandler(Landroid/os/Handler;)V

    goto :goto_2

    .line 322
    :cond_c
    new-instance v1, Landroid/content/Intent;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 322
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 325
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;IZ)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v4

    .line 350
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v5

    .line 351
    if-gez p2, :cond_0

    .line 352
    add-int v6, v5, p2

    if-eqz p3, :cond_3

    move v0, v1

    :goto_0
    sub-int p2, v6, v0

    .line 354
    :cond_0
    if-ltz p2, :cond_1

    add-int/lit8 v0, v5, -0x1

    if-lt p2, v0, :cond_4

    .line 355
    :cond_1
    const-string/jumbo v0, "H5SessionPlugin"

    const-string/jumbo v1, "invalid page index"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 382
    :cond_2
    return v3

    :cond_3
    move v0, v2

    .line 352
    goto :goto_0

    .line 358
    :cond_4
    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v8}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 360
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v6

    .line 361
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 362
    const-string/jumbo v7, "h5_session_pop_param"

    invoke-interface {v6, v7, v0}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_5
    if-eqz p3, :cond_6

    :goto_1
    sub-int v2, v5, v1

    .line 370
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 371
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_2
    if-le v1, v2, :cond_7

    move v1, v3

    .line 377
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 378
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 379
    const-string/jumbo v2, "h5PageClose"

    invoke-virtual {v0, v2, v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 377
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v2

    .line 367
    goto :goto_1

    .line 372
    :cond_7
    invoke-virtual {v4, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 373
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alibaba/fastjson/JSONObject;I)Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alibaba/fastjson/JSONObject;IZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const v3, 0x7fffffff

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string/jumbo v4, "setSessionData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    const-string/jumbo v3, "data"

    invoke-static {v0, v3, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_2
    const-string/jumbo v4, "getSessionData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 85
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v4, "keys"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-lt v0, v6, :cond_3

    const-string/jumbo v0, "data"

    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 86
    :cond_4
    const-string/jumbo v4, "exitSession"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->release()V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->exitSession()Z

    goto/16 :goto_0

    .line 88
    :cond_5
    const-string/jumbo v4, "popTo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 89
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string/jumbo v2, "index"

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "index"

    invoke-static {v4, v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    :goto_3
    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "url"

    invoke-static {v4, v2, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Ljava/lang/String;Z)I

    move-result v2

    :cond_6
    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "urlPattern"

    invoke-static {v4, v2, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Ljava/lang/String;Z)I

    move-result v2

    :cond_7
    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "H5SessionPlugin"

    const-string/jumbo v3, "can\'t find page index"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "10"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v4, v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alibaba/fastjson/JSONObject;IZ)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_4

    .line 90
    :cond_a
    const-string/jumbo v0, "popWindow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string/jumbo v2, "data"

    invoke-static {v0, v2, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "h5_session_pop_param"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "h5PageClose"

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 92
    :cond_c
    const-string/jumbo v0, "pushWindow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    :cond_d
    move v2, v3

    goto/16 :goto_3
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "showFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b:Ljava/lang/Boolean;

    .line 75
    :cond_0
    :goto_0
    return v2

    .line 72
    :cond_1
    const-string/jumbo v1, "hideFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "getSessionData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "setSessionData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "exitSession"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "popWindow"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "popTo"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "pushWindow"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "showFavorites"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, "hideFavorites"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 53
    return-void
.end method
