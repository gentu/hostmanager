.class public Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/uhm/framework/ui/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 79
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 80
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 82
    .local v8, "fieldValue":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 85
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 92
    :goto_0
    if-eqz v6, :cond_0

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_0
    if-eqz v8, :cond_2

    .line 98
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 89
    :cond_1
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Field Entry not present in the DB !!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :catch_0
    move-exception v7

    .line 100
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Setting with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Setting with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 53
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 54
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 56
    .local v8, "fieldValue":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 59
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 66
    :goto_0
    if-eqz v6, :cond_0

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_0
    if-eqz v8, :cond_1

    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 72
    .end local p2    # "def":I
    :cond_1
    :goto_1
    return p2

    .line 63
    .restart local p2    # "def":I
    :cond_2
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Field Entry not present in the DB !!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :catch_0
    move-exception v7

    .line 72
    .local v7, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 140
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 141
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 143
    .local v8, "fieldValue":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 153
    :goto_0
    if-eqz v6, :cond_0

    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_0
    if-eqz v8, :cond_1

    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 159
    .end local p2    # "def":J
    :cond_1
    :goto_1
    return-wide p2

    .line 150
    .restart local p2    # "def":J
    :cond_2
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Field Entry not present in the DB !!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :catch_0
    move-exception v7

    .line 159
    .local v7, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 222
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 223
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 225
    .local v7, "fieldValue":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 228
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 229
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 235
    :goto_0
    if-eqz v6, :cond_0

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_0
    return-object v7

    .line 232
    :cond_1
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Field Entry not present in the DB !!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 196
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 197
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 199
    .local v7, "fieldValue":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 202
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 209
    :goto_0
    if-eqz v6, :cond_0

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_0
    if-eqz v7, :cond_2

    .end local v7    # "fieldValue":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 206
    .restart local v7    # "fieldValue":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Field Entry not present in the DB !!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v7, p2

    .line 213
    goto :goto_1
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldValue"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 109
    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 111
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v8, "values":Landroid/content/ContentValues;
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, "where":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8, v9, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    invoke-static {p1}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v9    # "where":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_0
    return-void

    .line 123
    :cond_1
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .restart local v8    # "values":Landroid/content/ContentValues;
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 127
    invoke-static {p1}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 129
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 130
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "putInt() exception occured during writing value in SettingsProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldValue"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 165
    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 167
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 171
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .local v8, "values":Landroid/content/ContentValues;
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, "where":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8, v9, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    invoke-static {p1}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v9    # "where":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_0
    return-void

    .line 179
    :cond_1
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .restart local v8    # "values":Landroid/content/ContentValues;
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 183
    invoke-static {p1}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 185
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 186
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "putString() exception occured during writing value in SettingsProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 243
    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 245
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 248
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 249
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v8, "values":Landroid/content/ContentValues;
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, "where":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8, v9, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    invoke-static {p1}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v9    # "where":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_0
    return-void

    .line 257
    :cond_1
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .restart local v8    # "values":Landroid/content/ContentValues;
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings$GearPluginEventQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 261
    invoke-static {p1}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 263
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 264
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/provider/Settings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "putString() exception occured during writing value in SettingsProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
