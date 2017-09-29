.class public abstract Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;
.super Lcom/alibaba/sqlcrypto/AbstractCursor;
.source "AbstractWindowedCursor.java"


# instance fields
.field protected mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->checkPosition()V

    .line 219
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Landroid/database/StaleDataException;

    const-string/jumbo v1, "Access closed cursor"

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 60
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 61
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/alibaba/sqlcrypto/AbstractCursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    .line 67
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBlob(I)[B
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 32
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 33
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_0
    return-object v0

    .line 32
    :cond_0
    monitor-exit v1

    .line 38
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getBlob(II)[B

    move-result-object v0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDouble(I)D
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 134
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 135
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_0
    return-wide v0

    .line 134
    :cond_0
    monitor-exit v2

    .line 141
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getDouble(II)D

    move-result-wide v0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getFloat(I)F
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 119
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    return v0

    .line 119
    :cond_0
    monitor-exit v1

    .line 126
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getFloat(II)F

    move-result v0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getInt(I)I
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 89
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    return v0

    .line 89
    :cond_0
    monitor-exit v1

    .line 96
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getInt(II)I

    move-result v0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLong(I)J
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 104
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    return-wide v0

    .line 104
    :cond_0
    monitor-exit v2

    .line 111
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong(II)J

    move-result-wide v0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getShort(I)S
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 74
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 75
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    return v0

    .line 74
    :cond_0
    monitor-exit v1

    .line 81
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getShort(II)S

    move-result v0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 46
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_0
    return-object v0

    .line 46
    :cond_0
    monitor-exit v1

    .line 52
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWindow()Lcom/alibaba/sqlcrypto/CursorWindow;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    return-object v0
.end method

.method public hasWindow()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlob(I)Z
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 162
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 163
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    instance-of v0, v0, [B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_1
    return v0

    .line 165
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    monitor-exit v1

    .line 169
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->isBlob(II)Z

    move-result v0

    goto :goto_1

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isFloat(I)Z
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 204
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 205
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_1

    instance-of v2, v0, Ljava/lang/Float;

    if-nez v2, :cond_0

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_1
    return v0

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 204
    :cond_2
    monitor-exit v1

    .line 211
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->isFloat(II)Z

    move-result v0

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isLong(I)Z
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 190
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 191
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_1

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_1
    return v0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :cond_2
    monitor-exit v1

    .line 197
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->isLong(II)Z

    move-result v0

    goto :goto_1

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isNull(I)Z
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 149
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_1
    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_1
    monitor-exit v1

    .line 155
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->isNull(II)Z

    move-result v0

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isString(I)Z
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 176
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 177
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_1
    return v0

    .line 179
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    monitor-exit v1

    .line 183
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->isString(II)Z

    move-result v0

    goto :goto_1

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setWindow(Lcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 238
    return-void
.end method
