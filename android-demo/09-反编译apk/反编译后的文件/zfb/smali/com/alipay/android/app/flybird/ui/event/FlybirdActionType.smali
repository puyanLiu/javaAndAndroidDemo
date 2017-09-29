.class public Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;,
        Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;
    }
.end annotation


# instance fields
.field private a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->g:Z

    .line 40
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->g:Z

    .line 40
    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h:Z

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    aput-object v1, v0, v2

    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v0, v0, v2

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a([Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 341
    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 342
    const-string/jumbo v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 343
    const-string/jumbo v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 344
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 345
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 346
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    .line 347
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 348
    aget-object v4, v3, v0

    .line 349
    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 350
    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    const-string/jumbo v6, "\'"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    .line 347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    const-string/jumbo v0, "loc:operation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 358
    :goto_1
    const-string/jumbo v1, "loc:scan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 361
    :cond_2
    const-string/jumbo v1, "loc:auth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a([Ljava/lang/String;)V

    .line 365
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->c:I

    .line 205
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->g:Z

    .line 189
    return-void
.end method

.method public final a()[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v0, 0x0

    .line 208
    .line 209
    if-eqz p1, :cond_1a

    .line 210
    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b:Ljava/lang/String;

    .line 211
    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 212
    if-nez v1, :cond_0

    move-object v1, p1

    .line 218
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 219
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->c:I

    .line 222
    :cond_1
    const-string/jumbo v2, "neec"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    const-string/jumbo v2, "neec"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->d:Ljava/lang/String;

    .line 226
    :cond_2
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 230
    if-nez v2, :cond_4

    .line 325
    :cond_3
    :goto_1
    return-object v0

    .line 233
    :cond_4
    array-length v0, v2

    new-array v0, v0, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 234
    array-length v3, v2

    .line 235
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_19

    .line 236
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    new-instance v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    sget-object v6, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-direct {v5, p0, v6}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    aput-object v5, v4, v0

    .line 237
    const-string/jumbo v4, "loc:exit"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 238
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 235
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 240
    :cond_5
    const-string/jumbo v4, "loc:back"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 241
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto :goto_3

    .line 243
    :cond_6
    aget-object v4, v2, v0

    if-eqz v4, :cond_7

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:bncb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 244
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 245
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 246
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a([Ljava/lang/String;)V

    goto :goto_3

    .line 248
    :cond_7
    aget-object v4, v2, v0

    if-eqz v4, :cond_8

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:bnvb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 249
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bnvb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto :goto_3

    .line 251
    :cond_8
    aget-object v4, v2, v0

    if-eqz v4, :cond_9

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:showTpl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 252
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 253
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ShowTpl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 254
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a([Ljava/lang/String;)V

    goto :goto_3

    .line 257
    :cond_9
    aget-object v4, v2, v0

    if-eqz v4, :cond_a

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:openurl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 258
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 259
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenUrl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 260
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 262
    :cond_a
    aget-object v4, v2, v0

    if-eqz v4, :cond_b

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:dismiss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 263
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Dismiss:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 265
    :cond_b
    aget-object v4, v2, v0

    if-eqz v4, :cond_d

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:returnData"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 266
    const-string/jumbo v4, "params"

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 267
    const-string/jumbo v4, "params"

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->e:Ljava/lang/String;

    .line 269
    :cond_c
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReturnData:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 271
    :cond_d
    aget-object v4, v2, v0

    if-eqz v4, :cond_e

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:scancard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 272
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanCard:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 274
    :cond_e
    aget-object v4, v2, v0

    if-eqz v4, :cond_f

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:readsms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 275
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadSms:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 277
    :cond_f
    aget-object v4, v2, v0

    if-eqz v4, :cond_10

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:openweb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 278
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 279
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenWeb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 281
    :cond_10
    aget-object v4, v2, v0

    if-eqz v4, :cond_11

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:wappay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 282
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 283
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->WapPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 285
    :cond_11
    aget-object v4, v2, v0

    if-eqz v4, :cond_12

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:scanface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 287
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanFace:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 289
    :cond_12
    aget-object v4, v2, v0

    if-eqz v4, :cond_13

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 290
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 292
    :cond_13
    aget-object v4, v2, v0

    if-eqz v4, :cond_14

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:fullpay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 293
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->FullPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 295
    :cond_14
    aget-object v4, v2, v0

    if-eqz v4, :cond_15

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:readPhoneNum"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 296
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadPhoneNum:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 300
    :cond_15
    aget-object v4, v2, v0

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_16

    aget-object v4, v2, v0

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_16

    .line 301
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    aget-object v5, v2, v0

    invoke-direct {p0, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 304
    :cond_16
    const-string/jumbo v4, "act"

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 305
    const-string/jumbo v4, "name"

    invoke-virtual {p1, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    .line 307
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 308
    const-string/jumbo v4, "loc:exit"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 309
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 313
    :cond_17
    aget-object v4, v2, v0

    const-string/jumbo v5, "loc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 314
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 318
    :cond_18
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    .line 320
    :cond_19
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    goto/16 :goto_1

    :cond_1a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h:Z

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h:Z

    .line 177
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->c:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->g:Z

    return v0
.end method

.method public final h()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    array-length v2, v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    if-ne v2, v3, :cond_0

    .line 337
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
