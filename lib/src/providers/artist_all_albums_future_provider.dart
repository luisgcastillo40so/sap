/*
Sap
Copyright (C) 2021  Carlton Aikins

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sap/src/models/album.dart';
import 'package:sap/src/providers/music_service_provider.dart';

var artistAllAlbumsId = 0;

final artistAllAlbumsFutureProvider = FutureProvider.autoDispose<List<Album>>((ref) {
  return ref.read(musicServiceProvider).getAllArtistAlbums(artistAllAlbumsId);
});
