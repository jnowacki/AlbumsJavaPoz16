package pl.jnowacki;

import org.junit.Test;

import static org.junit.Assert.*;

public class AlbumTest {

    @Test
    public void shouldReturnFalseWhenTitleIsNull() {
        //given
        Album album = new Album(null, "Dire Straits", 1989);

        //when
        boolean valid = album.isValid();

        //then
        assertFalse(valid);
    }

    @Test
    public void shouldReturnFalseWhenTitleIsEmpty() {
        //given
        Album album = new Album("", "Dire Straits", 1989);

        //when
        boolean valid = album.isValid();

        //then
        assertFalse(valid);
    }

    @Test
    public void shouldReturnTrueWhenAllFieldsOK() {
        //given
        Album album = new Album("Brothers in arms", "Dire Straits", 1989);

        //when
        boolean valid = album.isValid();

        //then
        assertTrue(valid);
    }
}