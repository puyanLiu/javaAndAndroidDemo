.class public Lcom/alibaba/sqlcrypto/CursorWindow;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;
.source "CursorWindow.java"


# instance fields
.field private mStartPos:I

.field private nWindow:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->native_init(Z)V

    .line 44
    return-void
.end method

.method private native allocRow_native()Z
.end method

.method private native close_native()V
.end method

.method private native copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C
.end method

.method private native freeLastRow_native()V
.end method

.method private native getBlob_native(II)[B
.end method

.method private native getDouble_native(II)D
.end method

.method private native getLong_native(II)J
.end method

.method private native getNumRows_native()I
.end method

.method private native getString_native(II)Ljava/lang/String;
.end method

.method private native isBlob_native(II)Z
.end method

.method private native isFloat_native(II)Z
.end method

.method private native isInteger_native(II)Z
.end method

.method private native isNull_native(II)Z
.end method

.method private native isString_native(II)Z
.end method

.method private native native_clear()V
.end method

.method private native native_init(Z)V
.end method

.method private native putBlob_native([BII)Z
.end method

.method private native putDouble_native(DII)Z
.end method

.method private native putLong_native(JII)Z
.end method

.method private native putNull_native(II)Z
.end method

.method private native putString_native(Ljava/lang/String;II)Z
.end method

.method private native setNumColumns_native(I)Z
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->allocRow_native()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 103
    return v0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 106
    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 467
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    .line 468
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->native_clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 472
    return-void

    .line 469
    :catchall_0
    move-exception v0

    .line 470
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 471
    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 482
    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 2

    .prologue
    .line 350
    if-nez p3, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    iget-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C

    if-nez v0, :cond_1

    .line 354
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 359
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    iget-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    array-length v1, v1

    .line 358
    invoke-direct {p0, v0, p2, v1, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C

    move-result-object v0

    .line 360
    if-eqz v0, :cond_2

    .line 361
    iput-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 366
    return-void

    .line 363
    :catchall_0
    move-exception v0

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 365
    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close_native()V

    .line 490
    return-void
.end method

.method public freeLastRow()V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->freeLastRow_native()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 121
    return-void

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 120
    throw v0
.end method

.method public getBlob(II)[B
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 244
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getBlob_native(II)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 244
    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 247
    throw v0
.end method

.method public getDouble(II)D
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 401
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getDouble_native(II)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 403
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 401
    return-wide v0

    .line 402
    :catchall_0
    move-exception v0

    .line 403
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 404
    throw v0
.end method

.method public getFloat(II)F
    .locals 2

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 453
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getDouble_native(II)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    double-to-float v0, v0

    .line 455
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 453
    return v0

    .line 454
    :catchall_0
    move-exception v0

    .line 455
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 456
    throw v0
.end method

.method public getInt(II)I
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 436
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    .line 438
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 436
    return v0

    .line 437
    :catchall_0
    move-exception v0

    .line 438
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 439
    throw v0
.end method

.method public getLong(II)J
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 382
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 384
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 382
    return-wide v0

    .line 383
    :catchall_0
    move-exception v0

    .line 384
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 385
    throw v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getNumRows_native()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 73
    return v0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 76
    throw v0
.end method

.method public getShort(II)S
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 420
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 422
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 420
    return v0

    .line 421
    :catchall_0
    move-exception v0

    .line 422
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 423
    throw v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 331
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getString_native(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 331
    return-object v0

    .line 332
    :catchall_0
    move-exception v0

    .line 333
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 334
    throw v0
.end method

.method public isBlob(II)Z
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 262
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->isBlob_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 264
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 262
    return v0

    .line 263
    :catchall_0
    move-exception v0

    .line 264
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 265
    throw v0
.end method

.method public isFloat(II)Z
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 294
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->isFloat_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 294
    return v0

    .line 295
    :catchall_0
    move-exception v0

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 297
    throw v0
.end method

.method public isLong(II)Z
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 278
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->isInteger_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 278
    return v0

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 281
    throw v0
.end method

.method public isNull(II)Z
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 226
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->isNull_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 226
    return v0

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 229
    throw v0
.end method

.method public isString(II)Z
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 310
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->isString_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 312
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 310
    return v0

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 313
    throw v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close_native()V

    .line 536
    return-void
.end method

.method public putBlob([BII)Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 135
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->putBlob_native([BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 135
    return v0

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 138
    throw v0
.end method

.method public putDouble(DII)Z
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 190
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/sqlcrypto/CursorWindow;->putDouble_native(DII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 190
    return v0

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 193
    throw v0
.end method

.method public putLong(JII)Z
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 171
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/sqlcrypto/CursorWindow;->putLong_native(JII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 171
    return v0

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 174
    throw v0
.end method

.method public putNull(II)Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 207
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->putNull_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 209
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 207
    return v0

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 210
    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 153
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->putString_native(Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 153
    return v0

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 156
    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 88
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->setNumColumns_native(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 88
    return v0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 91
    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    .line 63
    return-void
.end method
