.class public Lcom/alipay/android/app/ui/quickpay/event/ActionType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;
    }
.end annotation


# instance fields
.field public a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/android/app/json/JSONObject;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/alipay/android/app/json/JSONObject;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    .line 174
    return-void
.end method

.method public static a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 265
    if-eqz p0, :cond_4

    .line 267
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 268
    :goto_0
    if-nez v5, :cond_1

    .line 269
    new-array v0, v4, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    .line 270
    aget-object v1, v0, v2

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Submit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    iput-object v2, v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    .line 305
    :cond_0
    :goto_1
    return-object v0

    .line 273
    :cond_1
    array-length v0, v5

    new-array v0, v0, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    .line 275
    array-length v6, v5

    move v3, v2

    move v4, v2

    :goto_2
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 276
    new-instance v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Submit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v8, v1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    .line 277
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->values()[Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    move-result-object v9

    array-length v10, v9

    move v1, v2

    :goto_3
    if-ge v1, v10, :cond_2

    aget-object v11, v9, v1

    .line 278
    invoke-static {v11}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->a(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 279
    iput-object v11, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    .line 283
    :cond_2
    iput-object v7, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->b:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->c:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->i()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->d:Lcom/alipay/android/app/json/JSONObject;

    .line 286
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e:Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->f:Ljava/lang/String;

    .line 288
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->g:Ljava/lang/String;

    .line 289
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->l()Z

    move-result v1

    iput-boolean v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->h:Z

    .line 290
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->m()Z

    move-result v1

    iput-boolean v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->i:Z

    .line 291
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->n()Z

    move-result v1

    iput-boolean v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->j:Z

    .line 292
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->k:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->l:Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->m:Ljava/lang/String;

    .line 295
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->n:Lcom/alipay/android/app/json/JSONObject;

    .line 296
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a()Z

    move-result v1

    iput-boolean v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->o:Z

    .line 297
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->p:Ljava/lang/String;

    .line 298
    aput-object v8, v0, v4

    .line 299
    add-int/lit8 v4, v4, 0x1

    .line 275
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 277
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 302
    :cond_4
    new-array v0, v4, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    .line 303
    aget-object v1, v0, v2

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Submit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    iput-object v2, v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    goto/16 :goto_1

    :cond_5
    move-object v5, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->n:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->n:Lcom/alipay/android/app/json/JSONObject;

    .line 182
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->b:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->d:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->h:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->i:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->j:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->q:Z

    .line 250
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->q:Z

    return v0
.end method
